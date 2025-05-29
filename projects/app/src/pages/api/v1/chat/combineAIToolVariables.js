export const combineAIToolVariables = (messages = [], variables) => {
    if (!Array.isArray(messages) || messages.length === 0) return variables;
  
    const systemItem = messages.find((item) => item.role === 'system');
    if (!systemItem) return variables;
  
    const regex = /\+\$(.*?)\:(.*?)\$+/g;
    let match;
  
    while ((match = regex.exec(systemItem.content)) !== null) {
      const key = match[1].trim();
      const value = match[2].trim();
      // 直接修改传入的 variables 对象
      variables[key] = value;
    }
  
    return variables;
  };