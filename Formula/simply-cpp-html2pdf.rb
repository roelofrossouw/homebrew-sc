class SimplyCppHtml2pdf < Formula
    desc "HTML to PDF: pages with headers, footers, page numbers, a table of contents, links and bookmarks, through litehtml and sc-pdflite"
    homepage "https://github.com/roelofrossouw/simply-cpp-html2pdf"
    url "https://github.com/roelofrossouw/simply-cpp-html2pdf/archive/refs/tags/v3.0.0.tar.gz"
    sha256 "13ec00159f699d9c6ec0045ea3062c7755ec747ccc0da0b53f0ff01e284e099c"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-web"
    depends_on "simply-cpp-litehtml"
    depends_on "simply-cpp-pdflite"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_HTML2PDF_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
