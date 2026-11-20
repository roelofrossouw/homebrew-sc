class SimplyCppHttp < Formula
    desc "HTTP for simply-cpp: sc::rest over libcurl (queries, JSON, form and multipart bodies, client certificates, redirects) and sc::ollama"
    homepage "https://github.com/roelofrossouw/simply-cpp-http"
    url "https://github.com/roelofrossouw/simply-cpp-http/archive/refs/tags/v3.0.0.tar.gz"
    sha256 "ca850a93e05a9388df804153fb7ca7b6b932da49ddb34000b564be0f713816f8"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_HTTP_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
