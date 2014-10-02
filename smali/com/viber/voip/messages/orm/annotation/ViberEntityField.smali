.class public interface abstract annotation Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        api = 0x0
        uiRelated = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract api()I
.end method

.method public abstract projection()Ljava/lang/String;
.end method

.method public abstract uiRelated()Z
.end method
