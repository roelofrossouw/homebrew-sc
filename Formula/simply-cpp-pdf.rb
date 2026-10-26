class SimplyCppPdf < Formula
    desc "C++20 PDF writer: text, shapes, images and SVG, on sc-pdflite"
    homepage "https://github.com/roelofrossouw/simply-cpp-pdf"
    url "https://github.com/roelofrossouw/simply-cpp-pdf/archive/refs/tags/v4.1.1.tar.gz"
    sha256 "fe2a957c4ea2e76b58979cf0cf3bb13691b0fde34c948cbdd4013954f164e6e5"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-graphics"
    depends_on "simply-cpp-pdflite"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_PDF_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
