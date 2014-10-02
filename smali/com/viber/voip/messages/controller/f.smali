.class Lcom/viber/voip/messages/controller/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/q;


# instance fields
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;DDJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/viber/voip/messages/controller/f;->e:Lcom/viber/voip/messages/controller/c;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/f;->a:D

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/f;->b:D

    iput-wide p6, p0, Lcom/viber/voip/messages/controller/f;->c:J

    iput-wide p8, p0, Lcom/viber/voip/messages/controller/f;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/GroupController;)V
    .locals 9
    .parameter

    .prologue
    .line 137
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/f;->a:D

    iget-wide v3, p0, Lcom/viber/voip/messages/controller/f;->b:D

    iget-wide v5, p0, Lcom/viber/voip/messages/controller/f;->c:J

    iget-wide v7, p0, Lcom/viber/voip/messages/controller/f;->d:J

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/viber/voip/messages/controller/GroupController;->a(DDJJ)V

    .line 138
    return-void
.end method
