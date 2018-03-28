//
//  SLMp3Encoder.hpp
//  SLPcmToMp3
//
//  Created by smallLabel on 2018/3/26.
//  Copyright © 2018年 Fengmap. All rights reserved.
//

#ifndef SLMp3Encoder_hpp
#define SLMp3Encoder_hpp

#include <stdio.h>
#include "lame.h"

class Mp3Encoder {

public:
    Mp3Encoder();
    ~Mp3Encoder();
    int init(const char *pcmFilePath, const char *mp3FilePath, int sampleRate, int channels, int bitRate);
    
    void encoder();
    void destory();
    
private:
    FILE *pcmFile;
    FILE *mp3File;
    lame_t lameClient;
};



#endif /* SLMp3Encoder_hpp */
