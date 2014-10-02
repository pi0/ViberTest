.class public Lcom/viber/voip/contacts/b/b/a/i;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# annotations
.annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntity;
    authority = "com.viber.provider.vibercontacts"
    table = "phonebookrawcontact"
    type = .enum Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->Standard:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
.end annotation


# static fields
.field public static final a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

.field private static b:Ljava/lang/String;

.field private static c:Z


# instance fields
.field private d:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "contact_id"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "version"
    .end annotation
.end field

.field private f:Z
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "starred"
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/viber/voip/contacts/b/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-class v0, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/i;->b:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/contacts/b/b/a/i;->c:Z

    .line 141
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/j;

    const-class v1, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/b/b/a/j;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/i;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/b/b/a/e;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 41
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/i;->id:J

    .line 42
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/i;->d:J

    .line 43
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/i;->f:Z

    .line 44
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->g()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/b/b/a/i;->e:I

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/i;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/viber/voip/contacts/b/b/a/i;->e:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/i;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/i;->id:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/i;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/i;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/viber/voip/contacts/b/b/a/i;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/a/i;)J
    .locals 2
    .parameter

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/i;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/a/i;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/i;->d:J

    return-wide p1
.end method

.method static synthetic c(Lcom/viber/voip/contacts/b/b/a/i;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/viber/voip/contacts/b/b/a/i;->e:I

    return v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/i;->d:J

    return-wide v0
.end method

.method public a(J)Lcom/viber/voip/contacts/b/b/a/l;
    .locals 4
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/i;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    .line 96
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/l;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/contacts/b/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/i;->h:Lcom/viber/voip/contacts/b/b/a/a;

    .line 113
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/i;->g:Ljava/util/Set;

    .line 105
    return-void
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/i;->g:Ljava/util/Set;

    return-object v0
.end method

.method public c()Lcom/viber/voip/messages/orm/entity/EntityUpdater;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/viber/voip/messages/orm/entity/EntityUpdater",
            "<+",
            "Lcom/viber/voip/messages/orm/entity/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/k;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/contacts/b/b/a/k;-><init>(Lcom/viber/voip/contacts/b/b/a/i;[Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 122
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 123
    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/i;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 124
    const-string/jumbo v1, "_id"

    iget-wide v2, p0, Lcom/viber/voip/contacts/b/b/a/i;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    :cond_0
    const-string/jumbo v1, "contact_id"

    iget-wide v2, p0, Lcom/viber/voip/contacts/b/b/a/i;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    const-string/jumbo v1, "starred"

    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/i;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 128
    const-string/jumbo v1, "version"

    iget v2, p0, Lcom/viber/voip/contacts/b/b/a/i;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    return-object v0
.end method

.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/i;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RawContactEntity [id(raw_id)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/i;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/i;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/a/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", starred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/i;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
