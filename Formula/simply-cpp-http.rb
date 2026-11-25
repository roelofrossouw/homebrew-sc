class SimplyCppHttp < Formula
    desc "HTTP for simply-cpp: sc::rest over libcurl (queries, JSON, form and multipart bodies, client certificates, redirects) and sc::ollama"
    homepage "https://github.com/roelofrossouw/simply-cpp-http"
    url "https://github.com/roelofrossouw/simply-cpp-http/archive/refs/tags/v4.0.1.tar.gz"
    sha256 "9350c55a08b8b82f07ca9fcfea8c793084909f0f7c1477dc9aa16a9e3a148393"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_HTTP_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
