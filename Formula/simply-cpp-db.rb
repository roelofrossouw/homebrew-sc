class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.0.10.tar.gz"
    sha256 "0d28ad74663daa92519155f34f0ab0e9bb3b6fa895a9778cda7fe0d05407054a"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "postgresql"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
