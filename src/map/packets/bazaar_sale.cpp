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
#include "bazaar_sale.h"
#include "../entities/charentity.h"

CBazaarSalePacket::CBazaarSalePacket(CCharEntity* PChar, CCharEntity* PBuyer, uint16 ItemID, uint32 Quantity)
{
    this->id(0x10A);
    this->length(0x20);

    ref<uint32>(0x04) = Quantity;
    ref<uint16>(0x08) = ItemID;
    memcpy(data + (0x0A), PBuyer->GetName(), PBuyer->name.size());
    ref<uint8>(0x1A) = 0;
    ref<uint8>(0x1C) = 0;
}
