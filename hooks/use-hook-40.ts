import { useState, useCallback, useEffect } from 'react';

export const useHook$i = (initialValue?: any) => {
  const [state, setState] = useState(initialValue);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<Error | null>(null);

  const reset = useCallback(() => {
    setState(initialValue);
    setError(null);
  }, [initialValue]);

  const update = useCallback((value: any) => {
    setState(value);
  }, []);

  useEffect(() => {
    // Cleanup
    return () => {
      setLoading(false);
    };
  }, []);

  return { state, setState, loading, error, reset, update };
};

export default useHook$i;
