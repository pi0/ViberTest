.class Lcom/viber/voip/contacts/c/d/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/ap;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/m;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/x;->a:Lcom/viber/voip/contacts/c/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/x;->a:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/x;->a:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/d/m;->a(Ljava/util/Set;)V

    .line 306
    return-void
.end method
