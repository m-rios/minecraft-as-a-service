import {ReactNode} from 'react'

type ButtonProps = {
  children: ReactNode
}

const Button = ({children}: ButtonProps) => (
  <button>
    {children}
  </button>
)

export default Button