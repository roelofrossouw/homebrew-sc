class SimplyCppHttp < Formula
    desc "HTTP for simply-cpp: sc::rest over libcurl (queries, JSON, form and multipart bodies, client certificates, redirects) and sc::ollama"
    homepage "https://github.com/roelofrossouw/simply-cpp-http"
    url "https://github.com/roelofrossouw/simply-cpp-http/archive/refs/tags/v1.1.0.tar.gz"
    sha256 "db14666f358116ddf573df8c7111dd8013780fb3f442a29941b9028cc7556919"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_HTTP_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
