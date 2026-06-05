/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,
  images: {
    unoptimized: true,
  },
  env: {
    NEXT_PUBLIC_SITE_NAME: 'Xannrz Portfolio',
    NEXT_PUBLIC_SITE_URL: 'https://xannrz-portfolio-dolmmcs8.manus.space',
  },
};

module.exports = nextConfig;
