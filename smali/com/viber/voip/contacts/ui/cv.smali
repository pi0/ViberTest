.class Lcom/viber/voip/contacts/ui/cv;
.super Lcom/viber/voip/contacts/ui/cn;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/viber/voip/contacts/ui/ct;

.field private f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/viber/voip/contacts/ui/ct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cv;->e:Lcom/viber/voip/contacts/ui/ct;

    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/cn;-><init>(Lcom/viber/voip/contacts/ui/cb;)V

    .line 133
    iput-object p2, p0, Lcom/viber/voip/contacts/ui/cv;->f:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cv;->f:Ljava/lang/String;

    return-object v0
.end method
