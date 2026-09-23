class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.0.8.tar.gz"
    sha256 "afa8a43db5071f895d4b3027e9c8f7d9e45a74f647938f7e308c86d1b8e7405b"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "postgresql"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
