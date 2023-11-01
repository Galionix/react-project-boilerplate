import styles from "./templateName.module.css";
import bind from "classnames/bind"

const cx = bind.bind(styles)

type TemplateNameProps = {};
export const TemplateName = ({}: TemplateNameProps) => (
  <div className={cx({
    templateName: true
  })} data-testid="TemplateName">
    <h1>TemplateName component</h1>
  </div>
);
