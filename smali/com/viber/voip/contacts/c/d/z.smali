.class Lcom/viber/voip/contacts/c/d/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/ap;


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/viber/voip/contacts/c/d/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/m;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/z;->c:Lcom/viber/voip/contacts/c/d/m;

    iput-boolean p2, p0, Lcom/viber/voip/contacts/c/d/z;->a:Z

    iput-wide p3, p0, Lcom/viber/voip/contacts/c/d/z;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/d/z;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/z;->c:Lcom/viber/voip/contacts/c/d/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/c/d/z;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/e/u;->c(J)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/z;->c:Lcom/viber/voip/contacts/c/d/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/m;->f:Lcom/viber/voip/contacts/c/f/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b;->a()V

    .line 370
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/z;->c:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/z;->c:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/d/m;->a(Ljava/util/Set;)V

    .line 371
    return-void
.end method
