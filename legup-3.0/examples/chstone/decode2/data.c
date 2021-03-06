
#include "hw.h"
#include "data.h"
#include <stdio.h>
#include <stdlib.h>




void data_in( int* x, int m,
		int *comp_no,
		char p_jinfo_comps_info_quant_tbl_no_[NUM_COMPONENT],
		char p_jinfo_comps_info_dc_tbl_no_[NUM_COMPONENT],
		unsigned int p_jinfo_quant_tbl_quantval_[NUM_QUANT_TBLS][DCTSIZE2],
		int p_jinfo_dc_xhuff_tbl_huffval_[NUM_HUFF_TBLS][257],
		int p_jinfo_ac_xhuff_tbl_huffval_[NUM_HUFF_TBLS][257],
		int p_jinfo_dc_dhuff_tbl_ml_[NUM_HUFF_TBLS],
		int p_jinfo_dc_dhuff_tbl_maxcode_[NUM_HUFF_TBLS][36],
		int p_jinfo_dc_dhuff_tbl_mincode_[NUM_HUFF_TBLS][36],
		int p_jinfo_dc_dhuff_tbl_valptr_[NUM_HUFF_TBLS][36],
		int p_jinfo_ac_dhuff_tbl_ml_[NUM_HUFF_TBLS],
		int p_jinfo_ac_dhuff_tbl_maxcode_[NUM_HUFF_TBLS][36],
		int p_jinfo_ac_dhuff_tbl_mincode_[NUM_HUFF_TBLS][36],
		int p_jinfo_ac_dhuff_tbl_valptr_[NUM_HUFF_TBLS][36],
		unsigned char CurHuffReadBuf[57])
{  
  //FILE *input;
  //input = fopen("input","w");

  int i,j; 

  *comp_no = *x;
  //fprintf(input,"%x\n",*x);
  x++;

  unsigned int *y1 = (unsigned int *)x;
    for(i=0;i<NUM_QUANT_TBLS;i++)
    for(j=0;j<DCTSIZE2;j++)
   { p_jinfo_quant_tbl_quantval_[i][j]=*y1;
    // fprintf(input,"%x\n",*y1);
     y1++;
    }
 
  int * y0 = (int*)y1;

  for(i=0;i<NUM_HUFF_TBLS;i++)
    for(j=0;j<257;j++)
   { p_jinfo_dc_xhuff_tbl_huffval_[i][j] = *y0;
     //fprintf(input,"%x\n",*y0);
     y0++;
    }

  for(i=0;i<NUM_HUFF_TBLS;i++)
    for(j=0;j<257;j++)
   { p_jinfo_ac_xhuff_tbl_huffval_[i][j] = *y0;
     //fprintf(input,"%x\n",*y0);
     y0++;
    }

  for(i=0;i<NUM_HUFF_TBLS;i++)
   { p_jinfo_dc_dhuff_tbl_ml_[i]=*y0;
     //fprintf(input,"%x\n",*y0);
     y0++;
    }

   for(i=0;i<NUM_HUFF_TBLS;i++)
    for(j=0;j<36;j++)
   { p_jinfo_dc_dhuff_tbl_maxcode_[i][j]= *y0;
     //fprintf(input,"%x\n",*y0);
     y0++;
    }

  for(i=0;i<NUM_HUFF_TBLS;i++)
    for(j=0;j<36;j++)
   { p_jinfo_dc_dhuff_tbl_mincode_[i][j] = *y0;
     //fprintf(input,"%x\n",*y0);
     y0++;
    }
   for(i=0;i<NUM_HUFF_TBLS;i++)
    for(j=0;j<36;j++)
   { p_jinfo_dc_dhuff_tbl_valptr_[i][j] = *y0;
     //fprintf(input,"%x\n",*y0);
     y0++;
    }
   
   for(i=0;i<NUM_HUFF_TBLS;i++)
   { p_jinfo_ac_dhuff_tbl_ml_[i] = *y0;
     //fprintf(input,"%x\n",*y0);
     y0++;
    }

   for(i=0;i<NUM_HUFF_TBLS;i++)
    for(j=0;j<36;j++)
   { p_jinfo_ac_dhuff_tbl_maxcode_[i][j] = *y0;
     //fprintf(input,"%x\n",*y0);
     y0++;
    }
  
  for(i=0;i<NUM_HUFF_TBLS;i++)
    for(j=0;j<36;j++)
   { p_jinfo_ac_dhuff_tbl_mincode_[i][j] = *y0;
     //fprintf(input,"%x\n",*y0);
     y0++;
    }
   for(i=0;i<NUM_HUFF_TBLS;i++)
    for(j=0;j<36;j++)
   { p_jinfo_ac_dhuff_tbl_valptr_[i][j] = *y0;
     //fprintf(input,"%x\n",*y0);
     y0++;
    }
   
   char *y2 = (char *)y0;
  for (i=0;i<NUM_COMPONENT;i++)
  {p_jinfo_comps_info_quant_tbl_no_[i]=*y2;
   //fprintf(input,"%x\n",*y2);
   y2++;}
  for (i=0;i<NUM_COMPONENT;i++)
  {p_jinfo_comps_info_dc_tbl_no_[i] = *y2;
   //fprintf(input,"%x\n",*y2);
   y2++;}

   unsigned char *y3 = (unsigned char*)y2;
   
   for(i=0;i<57;i++)
   { CurHuffReadBuf[i] = *y3;
     //fprintf(input,"%x\n",*y3);
     y3++;
    }
   //fclose(input);
} 



void data_out(int *y, int n,  
 int out_buf[DCTSIZE2],
 int HuffBuff[DCTSIZE2],
 int *offset)

{ int i,j;
  //FILE *output;
  //output = fopen("output","w"); 
  *y= *offset;
  //fprintf(output,"%x\n",*offset);
  y++;
    for(i=0;i<DCTSIZE2;i++)
   { *y= out_buf[i];
     //fprintf(output,"%x\n", out_buf[i]);
     y++;
    }
      for(i=0;i<DCTSIZE2;i++)
   { *y= HuffBuff[i] ;
     //fprintf(output,"%x\n", HuffBuff[i]);
     y++;
    }

  //fclose(output); 
}

