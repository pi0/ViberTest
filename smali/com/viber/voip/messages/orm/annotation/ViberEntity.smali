.class public interface abstract annotation Lcom/viber/voip/messages/orm/annotation/ViberEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/viber/voip/messages/orm/annotation/ViberEntity;
        type = .enum Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->ContentValues:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract authority()Ljava/lang/String;
.end method

.method public abstract table()Ljava/lang/String;
.end method

.method public abstract type()Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
.end method
