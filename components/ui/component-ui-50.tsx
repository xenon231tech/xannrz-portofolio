import React from 'react';

interface UIComponentProps {
  variant?: 'primary' | 'secondary' | 'danger';
  size?: 'sm' | 'md' | 'lg';
  disabled?: boolean;
  children?: React.ReactNode;
}

export const UIComponent$i: React.FC<UIComponentProps> = ({
  variant = 'primary',
  size = 'md',
  disabled = false,
  children,
}) => {
  return (
    <div className={`ui-component ui-component-$i variant-${variant} size-${size}`}>
      {children || `UI Component $i`}
    </div>
  );
};

export default UIComponent$i;
