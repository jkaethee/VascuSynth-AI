/*=========================================================================
 *
 *  Copyright NumFOCUS
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0.txt
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *=========================================================================*/

#ifndef itkFFTImageFilterFactoryRegisterManager_h
#define itkFFTImageFilterFactoryRegisterManager_h

namespace itk {

//
//  The following code is intended to be expanded at the end of the
//  itk<config>FFTImageFilter.h files
//
void ITK_ABI_IMPORT VnlComplexToComplexFFTFactoryRegister__Private();void ITK_ABI_IMPORT VnlComplexToComplex1DFFTFactoryRegister__Private();void ITK_ABI_IMPORT VnlForwardFFTFactoryRegister__Private();void ITK_ABI_IMPORT VnlForward1DFFTFactoryRegister__Private();void ITK_ABI_IMPORT VnlHalfHermitianToRealInverseFFTFactoryRegister__Private();void ITK_ABI_IMPORT VnlInverseFFTFactoryRegister__Private();void ITK_ABI_IMPORT VnlInverse1DFFTFactoryRegister__Private();void ITK_ABI_IMPORT VnlRealToHalfHermitianForwardFFTFactoryRegister__Private();

class FFTImageFilterFactoryRegisterManager
{
  public:
  explicit FFTImageFilterFactoryRegisterManager()
  {
    void (* const FFTImageFilterFactoryRegisterRegisterList[])(void) = {
      VnlComplexToComplexFFTFactoryRegister__Private,VnlComplexToComplex1DFFTFactoryRegister__Private,VnlForwardFFTFactoryRegister__Private,VnlForward1DFFTFactoryRegister__Private,VnlHalfHermitianToRealInverseFFTFactoryRegister__Private,VnlInverseFFTFactoryRegister__Private,VnlInverse1DFFTFactoryRegister__Private,VnlRealToHalfHermitianForwardFFTFactoryRegister__Private,
    nullptr};

    auto list = FFTImageFilterFactoryRegisterRegisterList;
    for(;*list != nullptr; ++list)
      {
      (*list)();
      }
    }
};

//
// The code below registers available FFT helpers using static initialization in
// application translation units. Note that this code will be expanded in the
// ITK-based applications and not in ITK itself.
//
const FFTImageFilterFactoryRegisterManager FFTImageFilterFactoryRegisterManagerInstance;

}

#endif
