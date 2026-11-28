class Html2pdf < Formula
    desc "html2pdf: HTML files as PDFs, with headers, footers, page numbers and a table of contents"
    homepage "https://github.com/roelofrossouw/html2pdf"
    url "https://github.com/roelofrossouw/html2pdf/archive/refs/tags/v1.3.1.tar.gz"
    sha256 "f1c535738e9069697eff70d3f854cbfd42dc56e7ea75e5cb6d594e59b96e0757"
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
