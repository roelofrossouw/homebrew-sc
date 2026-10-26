class SimplyCppPdflite < Formula
    desc "C++20 PDF writer of our own: strict PDF 1.7, built-in fonts, no library but zlib"
    homepage "https://github.com/roelofrossouw/simply-cpp-pdflite"
    url "https://github.com/roelofrossouw/simply-cpp-pdflite/archive/refs/tags/v4.6.1.tar.gz"
    sha256 "dcb6be4b854ebcbe37337389801065bdef6897abf4f59f266ba35bec4f0083d6"
    license "Apache-2.0"

    depends_on "cmake" => :build
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
