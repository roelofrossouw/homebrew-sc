class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v4.0.0.tar.gz"
    sha256 "f4efff992cf0e97446bf248d6e7c757240e18f693cc1b7912eeb577186f35360"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-net"
    depends_on "libpq"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_DB_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
