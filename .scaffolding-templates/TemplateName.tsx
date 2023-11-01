import styles from "./templateName.module.scss";

type TTemplateNameProps = {};
export const TemplateName = ({ }: TTemplateNameProps) => {

  return (
    <div className={styles.templateName} data-testid="TemplateName">
      <h1>TemplateName component</h1>
    </div>
  )
};
