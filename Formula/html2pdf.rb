class Html2pdf < Formula
    desc "html2pdf: HTML files as PDFs, with headers, footers, page numbers and a table of contents"
    homepage "https://github.com/roelofrossouw/html2pdf"
    url "https://github.com/roelofrossouw/html2pdf/archive/refs/tags/v1.1.11.tar.gz"
    sha256 "9b1603bc817d3011f919ba492864d0037f8ce1f21b8fcf576908da95bb599f61"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-html2pdf"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DBUILD_TESTING=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
