.class Lcom/viber/voip/messages/controller/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/am;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;JJJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/f;->e:Lcom/viber/voip/messages/controller/c/e;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/c/f;->a:J

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/c/f;->b:J

    iput-wide p6, p0, Lcom/viber/voip/messages/controller/c/f;->c:J

    iput-boolean p8, p0, Lcom/viber/voip/messages/controller/c/f;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/de;)V
    .locals 8
    .parameter

    .prologue
    .line 138
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/c/f;->a:J

    iget-wide v3, p0, Lcom/viber/voip/messages/controller/c/f;->b:J

    iget-wide v5, p0, Lcom/viber/voip/messages/controller/c/f;->c:J

    iget-boolean v7, p0, Lcom/viber/voip/messages/controller/c/f;->d:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/viber/voip/messages/controller/de;->a(JJJZ)V

    .line 139
    return-void
.end method
