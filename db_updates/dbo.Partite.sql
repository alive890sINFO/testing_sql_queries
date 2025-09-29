CREATE TABLE [dbo].[Partite] (
    [idPartita]     INT IDENTITY (1, 1) NOT NULL,
    [squadraCasa]   INT NOT NULL,
    [squadraOspite] INT NOT NULL,
    [goalCasa]      INT DEFAULT ((0)) NULL,
    [goalOspite]    INT DEFAULT ((0)) NULL,
	dataPartita date default(getdate()),
    PRIMARY KEY CLUSTERED ([idPartita] ASC),
    CONSTRAINT [fk_partite_casa] FOREIGN KEY ([squadraCasa]) REFERENCES [dbo].[squadre] ([idSquadra]),
    CONSTRAINT [fk_partite_ospite] FOREIGN KEY ([squadraOspite]) REFERENCES [dbo].[squadre] ([idSquadra]),
	constraint [goal_casa] check (goalCasa>=0),
	constraint [goal_ospite] check (goalOspite>=0),
	constraint cassa_diverso_ospite check (squadraCasa != squadraOspite)
);

