class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.0.7.tar.gz"
    sha256 "a9c59e00408738051a6b8456170fd63159a83708b2f226e38439b02e216aa773"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "postgresql"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
