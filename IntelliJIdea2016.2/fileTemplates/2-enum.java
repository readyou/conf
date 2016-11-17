#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
import com.shuidi.suishoubao.interfaces.IntValued;
import com.shuidi.suishoubao.protocol.enums.errors.CommonErrorEnum;
import com.shuidi.suishoubao.protocol.exception.service.ServiceRuntimeException;

import java.util.HashMap;
import java.util.Map;

#parse("File Header.java")

public enum ${NAME} implements IntValued {
   ${ENAME}(${VALUE}, "${DESCRIPTION}"),
   ;

   private int value;
   private String description;

   ${NAME}(int value, String description) {
      this.value = value;
      this.description = description;
   }

   private static Map<Integer, ${NAME}> enumMap = new HashMap<Integer, ${NAME}>();
   static {
      for (${NAME} tmpEnum : ${NAME}.values()) {
         enumMap.put(tmpEnum.getValue(), tmpEnum);
      }
   }   
   @Override
   public int getValue() {
      return value;
   }
   
   public String getDescription() {
      return description;
   }

   public static boolean isValid(int value) {
      return null != enumMap.get(value);
   }
   
   public static boolean isValid(String enumString) {
	try {
		return null != ${NAME}.valueOf(enumString);
	} catch (IllegalArgumentException e) {
		return false;
	}
   }

   public static ${NAME} parseInt(int value) {
		if (!isValid(value)) {
			throw new ServiceRuntimeException(CommonErrorEnum.INVALID_ENUM_VALUE);
		}
		return enumMap.get(value);
   }
   
}