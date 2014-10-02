.class Lcom/viber/voip/contacts/c/d/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fh;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/ap;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/contacts/c/d/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ap;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/aj;->d:Lcom/viber/voip/contacts/c/d/aa;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/aj;->a:Lcom/viber/voip/contacts/c/d/ap;

    iput-wide p3, p0, Lcom/viber/voip/contacts/c/d/aj;->b:J

    iput-object p5, p0, Lcom/viber/voip/contacts/c/d/aj;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 158
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aj;->a:Lcom/viber/voip/contacts/c/d/ap;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aj;->a:Lcom/viber/voip/contacts/c/d/ap;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/ap;->a()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aj;->d:Lcom/viber/voip/contacts/c/d/aa;

    iget-wide v1, p0, Lcom/viber/voip/contacts/c/d/aj;->b:J

    iget-object v3, p0, Lcom/viber/voip/contacts/c/d/aj;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/d/aa;->a(Lcom/viber/voip/contacts/c/d/aa;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 162
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aj;->d:Lcom/viber/voip/contacts/c/d/aa;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/aa;->a(Lcom/viber/voip/contacts/c/d/aa;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    const/16 v1, 0x635

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/aj;->c:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;ZZ)V

    .line 164
    return-void
.end method
