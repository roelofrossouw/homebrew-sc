class SimplyCppHtml2pdf < Formula
    desc "HTML to PDF: pages with headers, footers, page numbers, a table of contents, links and bookmarks, through litehtml and sc-pdflite"
    homepage "https://github.com/roelofrossouw/simply-cpp-html2pdf"
    url "https://github.com/roelofrossouw/simply-cpp-html2pdf/archive/refs/tags/v1.4.3.tar.gz"
    sha256 "2cc5adc8443952ccbad66ebc691d45003725c471745295295e24e36f2878b431"
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
