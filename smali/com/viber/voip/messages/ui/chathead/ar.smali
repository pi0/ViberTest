.class Lcom/viber/voip/messages/ui/chathead/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;

.field private final b:Landroid/content/Context;

.field private final c:J

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;JZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/ar;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/ar;->b:Landroid/content/Context;

    .line 464
    iput-wide p3, p0, Lcom/viber/voip/messages/ui/chathead/ar;->c:J

    .line 465
    iput-boolean p5, p0, Lcom/viber/voip/messages/ui/chathead/ar;->d:Z

    .line 466
    iput-boolean p6, p0, Lcom/viber/voip/messages/ui/chathead/ar;->e:Z

    .line 467
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 473
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ar;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->r(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ar;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ar;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/viber/voip/messages/ui/chathead/ar;->c:J

    iget-boolean v4, p0, Lcom/viber/voip/messages/ui/chathead/ar;->d:Z

    iget-boolean v5, p0, Lcom/viber/voip/messages/ui/chathead/ar;->e:Z

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;JZZ)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ar;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->s(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
