import React from 'react';

interface PageProps {
  params?: any;
}

export const Page$i: React.FC<PageProps> = ({ params }) => {
  return (
    <div className="page-container">
      <h1>Page $i</h1>
      <section className="content">
        <p>Welcome to page $i of the portfolio.</p>
        <div className="features">
          <div>Feature 1</div>
          <div>Feature 2</div>
          <div>Feature 3</div>
        </div>
      </section>
    </div>
  );
};

export default Page$i;
