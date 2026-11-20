class SimplyCppWeb < Formula
    desc "C++20 web document formats: XML now (on libxml2), HTML, SVG and CSS to follow, read through STL-style ranges"
    homepage "https://github.com/roelofrossouw/simply-cpp-web"
    url "https://github.com/roelofrossouw/simply-cpp-web/archive/refs/tags/v2.1.0.tar.gz"
    sha256 "268a8c4552e1b83e16e641292ba38851c8ddbe1f3dcb298ccd3e87b4f477e37e"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_WEB_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
