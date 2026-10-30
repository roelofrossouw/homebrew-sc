class SimplyCppWeb < Formula
    desc "C++20 web document formats: XML now (on libxml2), HTML, SVG and CSS to follow, read through STL-style ranges"
    homepage "https://github.com/roelofrossouw/simply-cpp-web"
    url "https://github.com/roelofrossouw/simply-cpp-web/archive/refs/tags/v1.4.9.tar.gz"
    sha256 "069ac3b810457b54ed25ee48298b85cd01b59dc33f2ee6ed6e92b16b0c3ed259"
    license "Apache-2.0"

    depends_on "cmake" => :build

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_WEB_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
