class SimplyCppPdfhummus < Formula
  desc "PDFHummus (PDF-Writer) PDF library, as simply-cpp-pdf uses it"
  homepage "https://github.com/galkahana/PDF-Writer"
  url "https://github.com/galkahana/PDF-Writer/archive/refs/tags/v4.9.1.tar.gz"
  sha256 "57b3eb58464e14a6c5a53f2cab149f33b576e3e53925146128f2047fd21e3545"
  license "Apache-2.0"
  revision 1

  depends_on "cmake" => :build
  depends_on "freetype"
  depends_on "jpeg-turbo"
  depends_on "libpng"
  depends_on "libtiff"
  depends_on "openssl@3"
  uses_from_macos "zlib"

  # Seeking within what InputBufferedStream already holds moves in its buffer rather than reading
  # it again (sc-pdfhummus' patches/0001-seek-within-the-buffer.patch; 2.6x faster html2pdf).
  patch :DATA

  def install
    # USE_UNBUNDLED_FALLBACK_BUNDLED only so it doesn't insist on a system libaesgm:
    # OpenSSL does its AES instead. Everything else comes from Homebrew.
    system "cmake", "-S", ".", "-B", "build",
           "-DBUILD_SHARED_LIBS=ON",
           "-DUSE_BUNDLED=FALSE",
           "-DUSE_UNBUNDLED_FALLBACK_BUNDLED=TRUE",
           *std_cmake_args
    system "cmake", "--build", "build", "--target", "PDFWriter"
    system "cmake", "--install", "build"
  end

  test do
    assert_path_exists lib/"cmake/PDFHummus/PDFHummusConfig.cmake"
    assert_path_exists include/"PDFWriter/PDFWriter.h"
  end
end

__END__
diff --git a/PDFWriter/InputBufferedStream.cpp b/PDFWriter/InputBufferedStream.cpp
index cd65f22..fc4a6fc 100644
--- a/PDFWriter/InputBufferedStream.cpp
+++ b/PDFWriter/InputBufferedStream.cpp
@@ -139,6 +139,17 @@ void InputBufferedStream::Skip(LongBufferSizeType inSkipSize)
 
 void InputBufferedStream::SetPosition(LongFilePositionType inOffsetFromStart)
 {
+	// Within what the buffer holds: move in it, rather than reading it all again.
+	if(mLastAvailableIndex != mBuffer)
+	{
+		LongFilePositionType bufferEnd = mSourceStream->GetCurrentPosition();
+		LongFilePositionType bufferStart = bufferEnd - (mLastAvailableIndex - mBuffer);
+		if(inOffsetFromStart >= bufferStart && inOffsetFromStart <= bufferEnd)
+		{
+			mCurrentBufferIndex = mBuffer + (inOffsetFromStart - bufferStart);
+			return;
+		}
+	}
 	mLastAvailableIndex = mCurrentBufferIndex = mBuffer;
 	mSourceStream->SetPosition(inOffsetFromStart);
 }
