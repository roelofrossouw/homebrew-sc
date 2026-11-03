class SimplyCppHttp < Formula
    desc "HTTP for simply-cpp: sc::rest over libcurl (queries, JSON, form and multipart bodies, client certificates, redirects) and sc::ollama"
    homepage "https://github.com/roelofrossouw/simply-cpp-http"
    url "https://github.com/roelofrossouw/simply-cpp-http/archive/refs/tags/v1.0.3.tar.gz"
    sha256 "0259ad75344f5a75f4fc4a6369049bdabddd61c1a598d5813a112f2eb99a67c1"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_HTTP_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
