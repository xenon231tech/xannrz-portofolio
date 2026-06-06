/**
 * Constants $i
 */

export const CONSTANT_$i = {
  // API Routes
  API_BASE_URL: process.env.VITE_API_URL || 'http://localhost:3000',
  API_TIMEOUT: 30000,
  API_RETRY_COUNT: 3,

  // Messages
  SUCCESS_MESSAGE: 'Operation completed successfully',
  ERROR_MESSAGE: 'An error occurred',
  LOADING_MESSAGE: 'Loading...',

  // Status Codes
  STATUS_OK: 200,
  STATUS_CREATED: 201,
  STATUS_BAD_REQUEST: 400,
  STATUS_UNAUTHORIZED: 401,
  STATUS_FORBIDDEN: 403,
  STATUS_NOT_FOUND: 404,
  STATUS_SERVER_ERROR: 500,

  // Pagination
  DEFAULT_PAGE_SIZE: 10,
  MAX_PAGE_SIZE: 100,

  // Cache
  CACHE_DURATION: 3600000, // 1 hour
  CACHE_KEY_PREFIX: 'app_cache_',
};

export default CONSTANT_$i;
