import { Meta } from '@storybook/react';

import Button from './button';

export default {
  component: Button,
  title: 'Components/Button',
} as Meta;

export const Primary: React.VFC<{}> = () => <Button>Button</Button>;