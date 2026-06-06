/**
 * Type Definitions $i
 */

export interface Model$i {
  id: number;
  name: string;
  description?: string;
  active: boolean;
  createdAt: Date;
  updatedAt: Date;
}

export interface Request$i {
  id?: number;
  name: string;
  description?: string;
}

export interface Response$i {
  success: boolean;
  data?: Model$i;
  error?: string;
  timestamp: Date;
}

export type Status$i = 'pending' | 'active' | 'inactive' | 'archived';

export enum Priority$i {
  LOW = 'low',
  MEDIUM = 'medium',
  HIGH = 'high',
  CRITICAL = 'critical',
}
