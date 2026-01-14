package com.example.demo.domain.event;

import com.example.demo.core.generic.AbstractEntity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@Table(name = "event_entity")
public class EventEntity extends AbstractEntity {
    @Column(name = "event_name", nullable = false, length = 50)
    @JdbcTypeCode(SqlTypes.VARCHAR)
    private String eventName;

    @Column(name = "event_location", length = 50)
    @JdbcTypeCode(SqlTypes.VARCHAR)
    private String eventLocation;

    @Column(name = "end_date_time", nullable = false)
    @JdbcTypeCode(SqlTypes.TIMESTAMP)
    private LocalDateTime endDateTime;

    @Column(name = "start_date_time", nullable = false)
    private LocalDateTime startDateTime;

    @Column(name = "event_description")
    @JdbcTypeCode(SqlTypes.VARCHAR)
    private String eventDescription;

    @Column(name = "event_type", nullable = false)
    @JdbcTypeCode(SqlTypes.VARCHAR)
    private Enum eventType;

}