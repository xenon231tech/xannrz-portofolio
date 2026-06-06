/**
 * Page $i Component
 * 
 * This page demonstrates a professional portfolio page layout.
 * It includes sections for content display, navigation, and user interaction.
 * 
 * @component
 * @example
 * return <Page$i />
 */

import React, { useState, useEffect } from 'react';
import Head from 'next/head';

interface PageProps {
  params?: any;
  searchParams?: any;
}

/**
 * Page $i - Professional Portfolio Page
 * 
 * Features:
 * - Responsive layout
 * - SEO optimized
 * - Accessible components
 * - Performance optimized
 */
export const Page$i: React.FC<PageProps> = ({ params, searchParams }) => {
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    // Fetch data
    const fetchData = async () => {
      try {
        setLoading(true);
        // Simulate API call
        await new Promise(resolve => setTimeout(resolve, 500));
        setData({
          id: $i,
          title: 'Page $i',
          description: 'Professional portfolio page $i',
          content: 'This is the content for page $i'
        });
      } catch (err) {
        setError('Failed to load page data');
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, []);

  if (loading) {
    return (
      <div className="page-container loading">
        <div className="spinner">Loading...</div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="page-container error">
        <div className="error-message">{error}</div>
      </div>
    );
  }

  return (
    <>
      <Head>
        <title>Page $i - XANNRZ Portfolio</title>
        <meta name="description" content="Professional portfolio page $i" />
        <meta property="og:title" content="Page $i" />
        <meta property="og:description" content="Professional portfolio page $i" />
      </Head>

      <div className="page-container">
        <header className="page-header">
          <h1>{data?.title}</h1>
          <p className="subtitle">{data?.description}</p>
        </header>

        <main className="page-content">
          <section className="content-section">
            <h2>Overview</h2>
            <p>{data?.content}</p>
          </section>

          <section className="features-section">
            <h2>Features</h2>
            <div className="features-grid">
              <div className="feature-card">
                <h3>Feature 1</h3>
                <p>Description of feature 1</p>
              </div>
              <div className="feature-card">
                <h3>Feature 2</h3>
                <p>Description of feature 2</p>
              </div>
              <div className="feature-card">
                <h3>Feature 3</h3>
                <p>Description of feature 3</p>
              </div>
            </div>
          </section>

          <section className="cta-section">
            <h2>Call to Action</h2>
            <button className="cta-button">Get Started</button>
          </section>
        </main>

        <footer className="page-footer">
          <p>&copy; 2026 XANNRZ Portfolio. All rights reserved.</p>
        </footer>
      </div>

      <style jsx>{`
        .page-container {
          min-height: 100vh;
          display: flex;
          flex-direction: column;
          padding: 2rem;
        }

        .page-header {
          text-align: center;
          margin-bottom: 3rem;
        }

        .page-header h1 {
          font-size: 2.5rem;
          font-weight: 700;
          margin-bottom: 1rem;
        }

        .subtitle {
          font-size: 1.25rem;
          color: #666;
        }

        .page-content {
          flex: 1;
          max-width: 1200px;
          margin: 0 auto;
          width: 100%;
        }

        .content-section {
          margin-bottom: 3rem;
        }

        .features-grid {
          display: grid;
          grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
          gap: 2rem;
          margin-top: 1.5rem;
        }

        .feature-card {
          padding: 1.5rem;
          border-radius: 0.5rem;
          background: #f5f5f5;
          border: 1px solid #e0e0e0;
        }

        .cta-button {
          padding: 0.75rem 2rem;
          background: #667eea;
          color: white;
          border: none;
          border-radius: 0.5rem;
          font-size: 1rem;
          cursor: pointer;
          transition: background 0.3s;
        }

        .cta-button:hover {
          background: #5568d3;
        }

        .page-footer {
          text-align: center;
          margin-top: 3rem;
          padding-top: 2rem;
          border-top: 1px solid #e0e0e0;
          color: #666;
        }
      `}</style>
    </>
  );
};

export default Page$i;
