.class public Lcom/viber/voip/contacts/b/b/a/e;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/b/g;


# annotations
.annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntity;
    authority = "com.android.contacts"
    table = "data"
    type = .enum Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->Standard:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
.end annotation


# static fields
.field public static a:Lcom/viber/voip/messages/orm/creator/Creator;

.field private static b:Ljava/lang/String;

.field private static c:Z


# instance fields
.field private d:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "contact_id"
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "raw_contact_id"
    .end annotation
.end field

.field private f:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "photo_id"
    .end annotation
.end field

.field private g:I
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "version"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "display_name"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "data1"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "data2"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "data3"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "data5"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "data6"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "mimetype"
    .end annotation
.end field

.field private o:I
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "starred"
    .end annotation
.end field

.field private p:I
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "in_visible_group"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "lookup"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        api = 0xb
        projection = "sort_key"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        api = 0xb
        projection = "phonetic_name"
    .end annotation
.end field

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/viber/voip/contacts/b/b/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/e;->b:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/contacts/b/b/a/e;->c:Z

    .line 179
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/f;

    const-class v1, Lcom/viber/voip/contacts/b/b/a/e;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/b/b/a/f;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/e;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/b/b/k;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 86
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/k;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->i:Ljava/lang/String;

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/k;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/k;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->k:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/k;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->d:J

    .line 94
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/k;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->e:J

    .line 95
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/k;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->n:Ljava/lang/String;

    .line 96
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/contacts/b/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->i:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/viber/voip/contacts/b/b/a/e;->j:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/viber/voip/contacts/b/b/a/e;->k:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/e;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->g:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/e;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->id:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/e;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/a/e;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->o:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/a/e;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/viber/voip/contacts/b/b/a/e;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->p:I

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/contacts/b/b/a/e;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->f:J

    return-wide p1
.end method

.method static synthetic c(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/viber/voip/contacts/b/b/a/e;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->e:J

    return-wide p1
.end method

.method static synthetic d(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/e;->t:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->d:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->g:I

    return v0
.end method

.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/e;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->f:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->e:J

    return-wide v0
.end method

.method public j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 139
    iget v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->o:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->s:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/e;->t:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhonebookDataEntityImpl [contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rawContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", photoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneticName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", starred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", inVisibleGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lookupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/e;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
