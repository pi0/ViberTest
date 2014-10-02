.class public Lcom/viber/voip/e/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/viber/voip/e/t;-><init>(ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 13
    return-void
.end method

.method public constructor <init>(ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/viber/voip/e/t;->a:I

    .line 17
    iput-object p2, p0, Lcom/viber/voip/e/t;->b:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 18
    iput-boolean p3, p0, Lcom/viber/voip/e/t;->c:Z

    .line 19
    return-void
.end method
