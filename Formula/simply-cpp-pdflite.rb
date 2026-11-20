class SimplyCppPdflite < Formula
    desc "C++20 PDF writer of our own: strict PDF 1.7, drawn as an sc::canvas or object by object; reads, merges and protects PDFs"
    homepage "https://github.com/roelofrossouw/simply-cpp-pdflite"
    url "https://github.com/roelofrossouw/simply-cpp-pdflite/archive/refs/tags/v5.0.1.tar.gz"
    sha256 "3b69ae86600c5c35e84d6f9163d064aab764387ecf9e22df88007d59e9272942"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "pkgconf" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-graphics"
    depends_on "freetype"
    depends_on "openssl@3"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_PDFLITE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
