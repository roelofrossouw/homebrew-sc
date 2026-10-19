class SimplyCppWeb < Formula
    desc "C++20 web document formats: XML now (on libxml2), HTML, SVG and CSS to follow, read through STL-style ranges"
    homepage "https://github.com/roelofrossouw/simply-cpp-web"
    url "https://github.com/roelofrossouw/simply-cpp-web/archive/refs/tags/v1.4.6.tar.gz"
    sha256 "0cd7d406a2bfee4a455a418ccc1219a2c170881ba4f4ed2428c67e478ea06d6d"
    license "Apache-2.0"

    depends_on "cmake" => :build

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
