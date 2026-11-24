class SimplyCppPdflite < Formula
    desc "C++20 PDF writer of our own: strict PDF 1.7, drawn as an sc::canvas or object by object; reads, merges and protects PDFs"
    homepage "https://github.com/roelofrossouw/simply-cpp-pdflite"
    url "https://github.com/roelofrossouw/simply-cpp-pdflite/archive/refs/tags/v6.0.0.tar.gz"
    sha256 "857296722f5a765ecfcab9d3a8fe0a6f9138816a62c68b3c16bb0e99b8c5c9ed"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "pkgconf" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-geometry"
    depends_on "simply-cpp-graphics"
    depends_on "freetype"
    depends_on "openssl@3"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_PDFLITE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
