package com.example.demo.domain.event;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface EventEntityRepository extends JpaRepository<EventEntity, UUID> {
}