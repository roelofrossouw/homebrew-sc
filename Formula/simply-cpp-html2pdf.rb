class SimplyCppHtml2pdf < Formula
    desc "HTML to PDF: pages with headers, footers, page numbers, a table of contents, links and bookmarks, through litehtml and sc-pdflite"
    homepage "https://github.com/roelofrossouw/simply-cpp-html2pdf"
    url "https://github.com/roelofrossouw/simply-cpp-html2pdf/archive/refs/tags/v1.5.1.tar.gz"
    sha256 "498b5f2332dee7674a1bc0b87e112fb20def020e1c6a3aa35cba5fc0b5ba3b23"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-litehtml"
    depends_on "simply-cpp-pdf"
    depends_on "simply-cpp-pdflite"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_HTML2PDF_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
