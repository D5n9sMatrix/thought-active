module gnu.matrix.bin.client.active;

void main(string[] args)
{
    class MyActive
    {
        interface MyInterface
        {
            /** 
             * The form util of make one matrix plugin
             * about the product in scalar formed base
             * Examples: 
             */
            int A1 = Array[11,12,13,21,22,23,31,32,33];
            int A2 = Array[41,42,43,51,52,53,61,62,63];
            int A3 = Array[71,72,73,81,82,83,91,92,93];
            
            /// product object magic init 
            A1.init Object_A1;
            A2.init Object_A2;
            A3.init Object_A3;

            /// product object magic init multiples 
            /// classes formation numeric
            A1 * Yogurt_A1;
            A2 * Yogurt_A2;
            A3 * Yogurt_A3;

            /// product object pay init multiples
            ///  classes formation numeric 
            A1 * BreadNew_A1;
            A2 * BreadNew_A2;
            A3 * BreadNew_A3;


            ///Examples: 
            A1 * Chocolate_A1;
            A2 * Chocolate_A2;
            A3 * Chocolate_A3;

            /// 
            /// Params:
            ///   dg = A1, A2, A3
            /// Returns: 
            int opApply(scope int delegate(ref A1,A2,A3) dg)
            {
                int active = args;
            
                foreach (A1,A2,A3; array)
                {
                    active = dg(A1,A2,A3);
                    if (active)
                        break;
                }
            
                return active;
            }
         
          ///Standards: 
          int opApplyReverse(scope int delegate(ref A1,A2,A3) dg)
          {
            int active = args;
          
            foreach_reverse (A1,A2,A3; array)
            {
                active = dg(A1,A2,A3);
                if (active)
                    break;
            }
          
            return active;
          }

        /// 
        /// Params:
        ///   value = A1,A2,A3
        auto opAssign(A1,A2,A3)(real value)
        {
            
            return value;
        }  

        /// 
        /// Params:
        ///   value = A1,A2,A3 
        auto opBinary(string A1,A2,A3 R)(const R value) const // @suppress(dscanner.suspicious.missing_return)
        {
             real value = value;
        }
        /// 
        /// Params:
        ///   value = A1,A2,A3    
        auto opBinaryRight(string A1,A2,A3 L)(const L value) const // @suppress(dscanner.suspicious.missing_return)
        {
            real value = value;
        }

        }         
    }
}