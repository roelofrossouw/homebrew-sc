class Html2pdf < Formula
    desc "html2pdf: HTML files as PDFs, with headers, footers, page numbers and a table of contents"
    homepage "https://github.com/roelofrossouw/html2pdf"
    url "https://github.com/roelofrossouw/html2pdf/archive/refs/tags/v1.3.0.tar.gz"
    sha256 "8864dd37824eed653a283190932e79624a4a7739642247492717337105891bff"
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
