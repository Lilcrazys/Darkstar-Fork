/*
===========================================================================

Copyright (c) 2010-2015 Darkstar Dev Teams

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/

This file is part of DarkStar-server source code.

===========================================================================
*/

#include "../../common/socket.h"
#include <string.h>
#include "chat_message.h"
#include "../entities/charentity.h"

CChatMessagePacket::CChatMessagePacket(CCharEntity* PChar, CHAT_MESSAGE_TYPE MessageType, const std::string& message, const std::string& sender)
{
    //there seems to be some sort of variable cap on the length of the packet, which I cannot determine
    // (it changed when zoning, but not when zoning back)
    // if you'd like to try and figure out what the cap is based on, the client side max message length is also
    // variable in the same way, and is probably so under the same circumstances
    // until that can be found, we'll just use the max length 
    auto buffSize = std::min<size_t>(message.size(), 236);
    const std::string& name = sender.empty() ? PChar->GetName() : sender;
    // Build the packet..
    CBasicPacket::id(id);
    this->type = 0x17;
    //12 (base length / 2) + ((buffSize in chunks of 4) / 2) 
    //this->size = 12 + ((buffSize / 4) + 1) * 2;
    this->size = 0x82;

    ref<uint8>(0x04) = MessageType;

    if (PChar->nameflags.flags & FLAG_GM && sender.empty())
        ref<uint8>(0x05) = 0x01;

    ref<uint16>(0x06) = PChar->getZone();

    memcpy(data + (0x08), &name[0], name.size());
    memcpy(data + (0x18), &message[0], buffSize);
}

CSpoofMessagePacket::CSpoofMessagePacket(CCharEntity* PEntity, CHAT_MESSAGE_TYPE MessageType, int8* buff)
{
    int32 buffSize = (strlen(buff) > 236) ? 236 : strlen(buff);
    this->type = 0x17;
    this->size = 0x82;
    //this->size = dsp_min((32 + (buffSize + 1) + ((4 - ((buffSize + 1) % 4)) % 4)) / 2, 128);

    ref<uint8>(0x04) = MessageType;
    ref<uint16>(0x06) = PEntity->getZone();

    auto speakerName = PEntity->GetName();
    if (PEntity->objtype != TYPE_PC)
    {
        string_t fixedName = PEntity->GetName();

        // Strip out the _ in strings, replace with spaces
        size_t string_pos = fixedName.find("_");
        while (string_pos < fixedName.size())
        {
            fixedName.replace(string_pos, 1, " ");
            string_pos = fixedName.find("_");
        }

        speakerName = fixedName.c_str();
    }

    memcpy(data + (0x08), speakerName, PEntity->name.size());
    memcpy(data + (0x18), buff, buffSize);
}
