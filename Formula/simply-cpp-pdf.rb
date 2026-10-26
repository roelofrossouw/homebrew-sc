class SimplyCppPdf < Formula
    desc "C++20 PDF writer: text, shapes, images and SVG, on sc-pdflite"
    homepage "https://github.com/roelofrossouw/simply-cpp-pdf"
    url "https://github.com/roelofrossouw/simply-cpp-pdf/archive/refs/tags/v4.1.1.tar.gz"
    sha256 "cd184608480fff527dcca314d0865c138dccf7d45cc941313495c23c03bb2275"
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
