class SimplyCppHttp < Formula
    desc "HTTP for simply-cpp: sc::rest over libcurl (queries, JSON, form and multipart bodies, client certificates, redirects) and sc::ollama"
    homepage "https://github.com/roelofrossouw/simply-cpp-http"
    url "https://github.com/roelofrossouw/simply-cpp-http/archive/refs/tags/v4.0.0.tar.gz"
    sha256 "6c0b88af21dc5c956ae3fb1b4d5d19fd9447f3ab2fc11e44b621fd44ea3a8682"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_HTTP_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
