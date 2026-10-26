class Html2pdf < Formula
    desc "html2pdf: HTML files as PDFs, with headers, footers, page numbers and a table of contents"
    homepage "https://github.com/roelofrossouw/html2pdf"
    url "https://github.com/roelofrossouw/html2pdf/archive/refs/tags/v1.1.7.tar.gz"
    sha256 "c4a50c54e47e329fb96388b40e3ccb135f81ba4c275fd2db455c5dcfc2f45ced"
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
