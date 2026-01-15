package com.example.demo.domain.event;

import com.example.demo.domain.event.dto.EventDTO;

import java.util.List;
import java.util.UUID;

public interface EventService {

    EventDTO createEvent(EventDTO eventDTO, UUID ownerId);

    EventDTO findEventById(UUID eventId);

    List<EventDTO> findMyEvents(UUID userId);

    EventDTO updateEvent(UUID eventId, EventDTO eventDTO, UUID userId);

    void deleteEvent(UUID eventId, UUID userId);

    void addParticipant(UUID eventId, UUID participantId, EventRole role, UUID requestingUserId);

    void removeParticipant(UUID eventId, UUID participantId, UUID requestingUserId);

    void updateParticipantRole(UUID eventId, UUID participantId, EventRole newRole, UUID requestingUserId);

    boolean hasRole(UUID eventId, UUID userId, EventRole... roles);
}