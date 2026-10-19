class SimplyCppWeb < Formula
    desc "C++20 web document formats: XML now (on libxml2), HTML, SVG and CSS to follow, read through STL-style ranges"
    homepage "https://github.com/roelofrossouw/simply-cpp-web"
    url "https://github.com/roelofrossouw/simply-cpp-web/archive/refs/tags/v1.4.4.tar.gz"
    sha256 "95e2eec6acd588c5f1a2cd68146fc18c6bd4e20e70eae2184314101173578f6e"
    license "Apache-2.0"

    depends_on "cmake" => :build

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
