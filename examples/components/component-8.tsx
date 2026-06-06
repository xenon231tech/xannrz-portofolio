import React from 'react';

interface ComponentProps {
  title?: string;
  content?: string;
}

export const Component$i: React.FC<ComponentProps> = ({ 
  title = 'Component $i', 
  content = 'Default content' 
}) => {
  return (
    <div className="component-wrapper">
      <h3>{title}</h3>
      <p>{content}</p>
    </div>
  );
};

export default Component$i;
